.class public Lcom/android/settings/deviceinfo/firmwareversion/BuildNumberDialogController;
.super Ljava/lang/Object;
.source "BuildNumberDialogController.java"


# static fields
.field static final BUILD_NUMBER_VALUE_ID:I = 0x7f0a00ac


# instance fields
.field private final mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;)V
    .locals 0
    .param p1, "dialog"    # Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/settings/deviceinfo/firmwareversion/BuildNumberDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    .line 34
    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/BuildNumberDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    .line 41
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    const v2, 0x7f0a00ac

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 42
    return-void
.end method
