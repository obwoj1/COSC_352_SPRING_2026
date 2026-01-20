#!/bin/bash

# Setup script for COSC352 Spring 2026 student directories
# Creates student directories with project01-project11 subdirectories

set -e

# Student names in firstname_lastname format (parsed from Canvas CSV)
STUDENTS=(
    "adebisi_agbakosi"
    "karl_agli"
    "nasif_ajilore"
    "iyinoluwa_ayodele"
    "randolph_bame"
    "marcus_crosby"
    "joseph_egbujonuma"
    "princess_ekoh"
    "pauline_ekoma"
    "rochak_ghimire"
    "jamal_goodman"
    "sidney_green"
    "corey_hawkins"
    "aaron_herron"
    "kyle_holmes"
    "sharif_jenkins"
    "braydon_jones"
    "donovan_jones"
    "grace_joseph"
    "jessica_madu"
    "michael_miller"
    "chukwuemeka_obasi"
    "ositadinma_odunze"
    "taniyah_payton"
    "najae_potts"
    "aditya_poudel"
    "sandeep_shah"
    "isaiah_simpson"
    "oluwasegun_soji-john"
    "mahki_titus"
    "gulam_uddin"
    "stephen_waita"
    "enoch_williams"
    "obaloluwa_wojuade"
    "abdul_quayyum_yussuf"
)

echo "Creating student directories..."

# Create each student directory with project subdirectories
for student in "${STUDENTS[@]}"; do
    echo "  Creating $student/"
    mkdir -p "$student"

    # Create project01 through project11
    for i in $(seq -w 1 11); do
        mkdir -p "$student/project$i"
        # Add .gitkeep to make directory trackable by git
        touch "$student/project$i/.gitkeep"
    done
done

echo ""
echo "Created ${#STUDENTS[@]} student directories, each with 11 project folders."

# Git operations
echo ""
echo "Adding files to git..."
git add .

echo "Committing..."
git commit -m "Add student directories with project01-11 folders for COSC352 Spring 2026

35 students with 11 project directories each, using .gitkeep placeholders.

Co-Authored-By: Claude Opus 4.5 <noreply@anthropic.com>"

echo ""
echo "Pushing to remote..."
git push -u origin main

echo ""
echo "Done!"
