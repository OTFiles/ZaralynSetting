.class public final Lcom/android/settings/bluetooth/DevicePickerActivity;
.super Lcom/android/settings/BaseTitleActivity;
.source "DevicePickerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/android/settings/BaseTitleActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 34
    invoke-super {p0, p1}, Lcom/android/settings/BaseTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f0d004d

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->setContentView(I)V

    .line 36
    return-void
.end method
