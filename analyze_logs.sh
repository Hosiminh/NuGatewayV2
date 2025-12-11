#!/bin/bash
# Log analiz scripti

LOG_FILE=~/Desktop/NuGateway/nubank_$(date +%Y%m%d).log

echo "=========================================="
echo "  NuBank Log Analizi - $(date +%Y-%m-%d)"
echo "=========================================="
echo ""

echo "📊 Röle değişimleri:"
grep "🔌" $LOG_FILE | tail -n 20

echo ""
echo "💡 Aydınlatma olayları:"
grep "💡" $LOG_FILE | tail -n 10

echo ""
echo "⚠️  Uyarılar:"
grep "⚠️" $LOG_FILE | tail -n 10

echo ""
echo "❌ Hatalar:"
grep "ERROR" $LOG_FILE | tail -n 10

echo ""
echo "=========================================="