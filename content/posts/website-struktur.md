---
date: 2025-04-07
# description: ""
# image: ""
lastmod: 2025-04-07
showTableOfContents: false
# tags: ["",]
title: "Website Struktur"
type: "post"
draft: true
---

# Website Struktur

Diese Website wurde mit [Hugo](https://gohugo.io/) erstellt, einem statischen Website-Generator. Hier ist ein Überblick über die wichtigsten Komponenten:

## Technologie-Stack

- **Hugo**: Statischer Website-Generator
- **Gokarna Theme**: Ein minimalistisches, schnelles und responsives Theme
- **Firebase Hosting**: Hosting der Website

## Struktur

Die Website besteht aus folgenden Hauptkomponenten:

1. **Konfiguration**: Die `config.toml` Datei enthält alle wichtigen Einstellungen wie:
   - Website-Titel und Beschreibung
   - Social Media Links
   - Menüstruktur
   - Theme-spezifische Einstellungen

2. **Inhalte**: Alle Inhalte befinden sich im `content` Verzeichnis:
   - Posts: Blog-Beiträge
   - Pages: Statische Seiten

3. **Theme**: Das Gokarna Theme bietet:
   - Responsives Design
   - Dark/Light Mode
   - Social Media Integration
   - SEO-Optimierung

## Entwicklung

Die Website wird lokal mit dem Hugo Development Server entwickelt:
```bash
hugo server -D
```

Nach Änderungen wird die Website automatisch neu generiert und ist unter `http://localhost:1313` erreichbar.

## Deployment

Die Website wird automatisch über Firebase Hosting deployed. Nach dem Pushen von Änderungen in den `main` Branch wird die Website automatisch neu gebaut und auf Firebase deployed.
