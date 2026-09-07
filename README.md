# 3dprint

Personal 3D printing repository and resource

## Directory Structure

```
3dprint/
├── designs/          # Parametric source models (OpenSCAD)
│
├── exports/          # Rendered 3D models (STL, etc.)
│
├── prints/           # Sliced G-code ready for the printer
│
├── profiles/         # Slicer profiles, 3D CAD tooling profiles
│
└── reports/          # Various progress and incident reports
```

## Current Focus

- **Printer**: EasyThreed K9
- **Filament**: PETG
- **Slicer**: Ultimaker Cura

## Workflow

1. Design or tweak in `designs/` (OpenSCAD preferred).
2. Export mesh → `exports/`.
3. Slice with the appropriate profile from `profiles/`.
4. Save G-code to `prints/` (prefer dated naming for one-off jobs).
5. If quality issues appear, write a short report in `reports/` and adjust the profile or design.

## License

>  Copyright © 2010 — 2026 Randolph Ledesma
>
> Licensed under the Apache License, Version 2.0 (the "License");
> you may not use this file except in compliance with the License.
> You may obtain a copy of the License at
>
>    http://www.apache.org/licenses/LICENSE-2.0
>
> Unless required by applicable law or agreed to in writing, software
> distributed under the License is distributed on an "AS IS" BASIS,
> WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
> See the License for the specific language governing permissions and
> limitations under the License.
>
