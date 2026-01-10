#!/bin/bash

# SoT Content Validation Script
# Checks for infrastructure/personal content that shouldn't be in Source of Truth files

echo "🔍 ACE Source of Truth Content Validation"
echo "========================================="

SOT_DIR="active/source_of_truth"

if [ ! -d "$SOT_DIR" ]; then
    echo "❌ Source of Truth directory not found: $SOT_DIR"
    exit 1
fi

echo "📁 Scanning SoT files in: $SOT_DIR"
echo ""

# Red flag patterns that indicate infrastructure/personal content
RED_FLAGS=(
    "MCP"
    "Claude Desktop" 
    "filesystem"
    "local development"
    "personal"
    "individual"
    "setup"
    "configuration"
    "installation"
    "your machine"
    "your environment"
    "your directory"
    "/Users/"
    "~/"
    "localhost"
    "IDE"
    "VS Code"
    "development tools"
    "debugging"
    "troubleshooting"
)

# Product context patterns that should be in SoT
GOOD_PATTERNS=(
    "user experience"
    "user data"
    "user interface"
    "business logic"
    "product feature"
    "user value"
    "customer"
    "market"
    "revenue"
    "performance requirement"
    "security requirement"
    "API design"
    "data model"
    "user journey"
)

ISSUES_FOUND=0

echo "🚩 Checking for infrastructure/personal content red flags:"
echo "--------------------------------------------------------"

for file in "$SOT_DIR"/*.md; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        echo "Checking: $filename"
        
        for flag in "${RED_FLAGS[@]}"; do
            if grep -i "$flag" "$file" > /dev/null; then
                echo "  ⚠️  RED FLAG: '$flag' found in $filename"
                grep -n -i "$flag" "$file" | sed 's/^/      Line /'
                ISSUES_FOUND=$((ISSUES_FOUND + 1))
            fi
        done
    fi
done

echo ""
echo "✅ Checking for product context indicators:"
echo "-------------------------------------------"

PRODUCT_INDICATORS=0

for file in "$SOT_DIR"/*.md; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        
        for pattern in "${GOOD_PATTERNS[@]}"; do
            if grep -i "$pattern" "$file" > /dev/null; then
                PRODUCT_INDICATORS=$((PRODUCT_INDICATORS + 1))
                break
            fi
        done
    fi
done

echo "Found $PRODUCT_INDICATORS files with clear product context indicators"

echo ""
echo "📊 Validation Summary:"
echo "======================"

if [ $ISSUES_FOUND -eq 0 ]; then
    echo "✅ No red flags found - SoT content appears properly filtered"
else
    echo "❌ Found $ISSUES_FOUND potential issues"
    echo ""
    echo "🔧 Recommended Actions:"
    echo "• Review flagged content to determine if it belongs in SoT"
    echo "• Move infrastructure/setup content to setup-guides/"
    echo "• Move personal/process content to methodology/tools/"
    echo "• Move temporary content to temp/ directories"
    echo ""
    echo "📝 Content Classification Guidelines:"
    echo "• SoT = Product decisions, features, architecture that affect users"
    echo "• setup-guides/ = Personal setup and development environment"
    echo "• methodology/tools/ = Process and development tooling"
    echo "• temp/ = Temporary notes and experimental content"
fi

echo ""
echo "🎯 Four-Gate Test Reminder:"
echo "---------------------------"
echo "Before adding content to SoT, ALL must pass:"
echo "1. Product Impact: Affects user experience or business outcome?"
echo "2. Team Universal: Relevant regardless of individual setups?"
echo "3. Durability: Still relevant in 6+ months?"
echo "4. Architecture vs Tooling: About WHAT we build, not HOW?"

exit $ISSUES_FOUND
