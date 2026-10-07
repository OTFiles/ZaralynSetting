.class public abstract Lcom/android/settings/nfc/BaseNfcEnabler;
.super Ljava/lang/Object;
.source "BaseNfcEnabler.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field protected final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/android/settings/nfc/BaseNfcEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/BaseNfcEnabler$1;-><init>(Lcom/android/settings/nfc/BaseNfcEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nfc/BaseNfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 47
    iput-object p1, p0, Lcom/android/settings/nfc/BaseNfcEnabler;->mContext:Landroid/content/Context;

    .line 48
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/BaseNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/nfc/BaseNfcEnabler;->isNfcAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/nfc/BaseNfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 53
    return-void

    .line 55
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/nfc/BaseNfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 56
    return-void
.end method


# virtual methods
.method protected abstract handleNfcStateChanged(I)V
.end method

.method public isNfcAvailable()Z
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/settings/nfc/BaseNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pause()V
    .locals 2

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/nfc/BaseNfcEnabler;->isNfcAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/BaseNfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/BaseNfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 71
    return-void
.end method

.method public resume()V
    .locals 3

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/nfc/BaseNfcEnabler;->isNfcAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/BaseNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/BaseNfcEnabler;->handleNfcStateChanged(I)V

    .line 63
    iget-object v0, p0, Lcom/android/settings/nfc/BaseNfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/BaseNfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/nfc/BaseNfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    return-void
.end method
