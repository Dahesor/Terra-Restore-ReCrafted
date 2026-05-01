from __future__ import annotations

import json
import re
from pathlib import Path
from typing import Iterable, Set, List, Dict, Any


_ID_PATTERN = re.compile(r'\bid\s*:\s*"([^"]+)"')


def _collect_ids_from_file(file_path: Path) -> Set[str]:
    try:
        text = file_path.read_text(encoding="utf-8")
    except UnicodeDecodeError:
        text = file_path.read_text(encoding="utf-8-sig", errors="ignore")
    except Exception:
        return set()

    return set(_ID_PATTERN.findall(text))


def _iter_files(folder: Path) -> Iterable[Path]:
    yield from (p for p in folder.rglob("*") if p.is_file())


def collect_ids_from_folders(folders: Iterable[Path]) -> Set[str]:
    """
    Scan all files under given folders and collect strings from id:"xxx"
    """
    result: Set[str] = set()

    for folder in folders:
        if not folder.exists() or not folder.is_dir():
            continue

        for file_path in _iter_files(folder):
            result |= _collect_ids_from_file(file_path)

    return result


def build_status_id_enum(ids: Iterable[str]) -> str:
    """
    Build: type StatusID = ("a"|"b"|...)
    """
    ids_sorted = sorted(set(ids))

    lines: List[str] = []
    lines.append("type StatusID = (")
    for s in ids_sorted:
        lines.append(f'    "{s}"|')
    lines.append(")")

    return "\n".join(lines)


def _load_json_object(path: Path) -> Dict[str, Any]:
    """
    Load a JSON file as an object (dict). If missing -> {}.
    If invalid / not an object -> raise ValueError.
    """
    if not path.exists():
        return {}

    try:
        raw = path.read_text(encoding="utf-8")
    except UnicodeDecodeError:
        raw = path.read_text(encoding="utf-8-sig", errors="strict")

    raw_stripped = raw.strip()
    if not raw_stripped:
        return {}

    data = json.loads(raw_stripped)
    if not isinstance(data, dict):
        raise ValueError(f"JSON root must be an object/dict: {path}")
    return data


def update_translation_json(ids: Iterable[str], json_path: Path) -> int:
    """
    Ensure JSON contains keys:
      terra.status.<id> : "NO TEXT"
    Only add missing keys; do NOT modify existing ones.

    Returns: number of keys added.
    """
    obj = _load_json_object(json_path)

    added = 0
    for s in sorted(set(ids)):
        k = f"terra.status.{s}"
        if k in obj:
            continue
        obj[k] = "NO TEXT"
        added += 1

    json_path.parent.mkdir(parents=True, exist_ok=True)
    json_path.write_text(
        json.dumps(obj, ensure_ascii=False, indent=2, sort_keys=True) + "\n",
        encoding="utf-8",
    )

    return added


def write_status_id_enum(
    target_path: Path,
    folders: Iterable[Path],
) -> Set[str]:
    """
    High-level API:
    - collect ids from folders
    - write StatusID union type to target_path
    - return the collected id set
    """
    ids = collect_ids_from_folders(folders)
    content = build_status_id_enum(ids)

    target_path.parent.mkdir(parents=True, exist_ok=True)
    target_path.write_text(content, encoding="utf-8")

    return ids


def write_status_outputs(
    type_target_path: Path,
    json_path: Path,
    folders: Iterable[Path],
) -> Set[str]:
    """
    Convenience API:
    - writes type StatusID file
    - updates translation JSON (add missing keys only)
    - returns ids
    """
    ids = write_status_id_enum(type_target_path, folders)
    update_translation_json(ids, json_path)
    return ids
