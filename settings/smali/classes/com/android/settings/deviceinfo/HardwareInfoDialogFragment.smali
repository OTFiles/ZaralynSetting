.class public Lcom/android/settings/deviceinfo/HardwareInfoDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "HardwareInfoDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/android/settings/deviceinfo/HardwareInfoDialogFragment;
    .locals 1

    .line 44
    new-instance v0, Lcom/android/settings/deviceinfo/HardwareInfoDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/HardwareInfoDialogFragment;-><init>()V

    .line 45
    .local v0, "fragment":Lcom/android/settings/deviceinfo/HardwareInfoDialogFragment;
    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 40
    const/16 v0, 0x35e

    return v0
.end method

.method getSerialNumber()Ljava/lang/String;
    .locals 1

    .line 88
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 50
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/HardwareInfoDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 51
    const v1, 0x7f120688

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 52
    const/4 v1, 0x0

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 53
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 54
    const v3, 0x7f0d0098

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 56
    .local v1, "content":Landroid/view/View;
    nop

    .line 57
    invoke-static {}, Lcom/android/settings/deviceinfo/DeviceModelPreferenceController;->getDeviceModel()Ljava/lang/String;

    move-result-object v2

    .line 56
    const v3, 0x7f0a0280

    const v4, 0x7f0a0281

    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/android/settings/deviceinfo/HardwareInfoDialogFragment;->setText(Landroid/view/View;IILjava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/HardwareInfoDialogFragment;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a03bb

    const v4, 0x7f0a03bc

    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/android/settings/deviceinfo/HardwareInfoDialogFragment;->setText(Landroid/view/View;IILjava/lang/String;)V

    .line 63
    const-string v2, "ro.boot.hardware.revision"

    .line 64
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    const v3, 0x7f0a01c1

    const v4, 0x7f0a01c2

    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/android/settings/deviceinfo/HardwareInfoDialogFragment;->setText(Landroid/view/View;IILjava/lang/String;)V

    .line 66
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method setText(Landroid/view/View;IILjava/lang/String;)V
    .locals 3
    .param p1, "content"    # Landroid/view/View;
    .param p2, "labelViewId"    # I
    .param p3, "valueViewId"    # I
    .param p4, "value"    # Ljava/lang/String;

    .line 71
    if-nez p1, :cond_0

    .line 72
    return-void

    .line 74
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, "labelView":Landroid/view/View;
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 76
    .local v1, "valueView":Landroid/widget/TextView;
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 77
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 78
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 81
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 82
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    :goto_0
    return-void
.end method
