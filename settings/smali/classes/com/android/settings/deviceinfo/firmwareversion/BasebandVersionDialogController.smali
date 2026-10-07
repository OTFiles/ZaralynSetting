.class public Lcom/android/settings/deviceinfo/firmwareversion/BasebandVersionDialogController;
.super Ljava/lang/Object;
.source "BasebandVersionDialogController.java"


# static fields
.field public static final BASEBAND_PROPERTY:Ljava/lang/String; = "gsm.version.baseband"

.field static final BASEBAND_VERSION_LABEL_ID:I = 0x7f0a0077

.field static final BASEBAND_VERSION_VALUE_ID:I = 0x7f0a0078


# instance fields
.field private final mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;)V
    .locals 0
    .param p1, "dialog"    # Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/settings/deviceinfo/firmwareversion/BasebandVersionDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    .line 39
    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 5

    .line 45
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/BasebandVersionDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 46
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    const v2, 0x7f0a0078

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/android/settings/deviceinfo/firmwareversion/BasebandVersionDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    const v3, 0x7f0a0077

    invoke-virtual {v1, v3}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->removeSettingFromScreen(I)V

    .line 48
    iget-object v1, p0, Lcom/android/settings/deviceinfo/firmwareversion/BasebandVersionDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    invoke-virtual {v1, v2}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->removeSettingFromScreen(I)V

    .line 49
    return-void

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/firmwareversion/BasebandVersionDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    const-string v3, "gsm.version.baseband"

    const v4, 0x7f12051a

    .line 53
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 52
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 54
    return-void
.end method
