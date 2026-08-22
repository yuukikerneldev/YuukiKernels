#!/usr/bin/env python3
import os
import sys
import json
import urllib.request
import urllib.parse

def send_telegram_message(bot_token, chat_id, text):
    url = f"https://api.telegram.org/bot{bot_token}/sendMessage"
    payload = {
        "chat_id": chat_id,
        "text": text,
        "parse_mode": "Markdown",
        "disable_web_page_preview": True
    }
    data = json.dumps(payload).encode('utf-8')
    req = urllib.request.Request(url, data=data, headers={'Content-Type': 'application/json'})
    
    try:
        with urllib.request.urlopen(req) as response:
            res_data = response.read().decode('utf-8')
            print("Telegram CI post successful:")
            print(res_data)
            return True
    except Exception as e:
        print(f"Error posting to Telegram: {e}", file=sys.stderr)
        return False

if __name__ == "__main__":
    bot_token = os.environ.get("TELEGRAM_BOT_TOKEN")
    chat_id = os.environ.get("TELEGRAM_CHAT_ID", "@yuukikernels")
    
    if len(sys.argv) > 1:
        bot_token = sys.argv[1]
    if len(sys.argv) > 2:
        chat_id = sys.argv[2]
        
    if not bot_token:
        print("Usage: python3 telegram_publisher.py <BOT_TOKEN> [CHAT_ID]")
        print("Or set environment variables TELEGRAM_BOT_TOKEN and TELEGRAM_CHAT_ID")
        sys.exit(1)
        
    message = """⚡ *YuukiKernel Universal GKI LTS* (CI Build)

New test build passed successfully!

📦 *Downloads*:
• `YuukiKernel-6.12.90-ResukiSU-V1.zip` (GKI 6.12)
• `YuukiKernel-5.10.265-ResukiSU-V1.zip` (GKI 5.10)

⚙️ *Quick Overview*:
• Built with Neutron Clang 24 (PGO/BOLT)
• ReSukiSU v4.2.0-rc1 (Build 35089)
• zRAM 6GB LZ4 & TCP BBRv1
• Tuned schedutil governor + BBG

🌐 *GitHub*: https://github.com/yuukikerneldev/YuukiKernels"""

    send_telegram_message(bot_token, chat_id, message)
