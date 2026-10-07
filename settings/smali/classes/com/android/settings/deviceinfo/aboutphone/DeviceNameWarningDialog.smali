.class public Lcom/android/settings/deviceinfo/aboutphone/DeviceNameWarningDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "DeviceNameWarningDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;)V
    .locals 3
    .param p0, "host"    # Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;

    .line 38
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 39
    .local v0, "manager":Landroid/app/FragmentManager;
    const-string v1, "DeviceNameWarningDlg"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 40
    return-void

    .line 43
    :cond_0
    new-instance v1, Lcom/android/settings/deviceinfo/aboutphone/DeviceNameWarningDialog;

    invoke-direct {v1}, Lcom/android/settings/deviceinfo/aboutphone/DeviceNameWarningDialog;-><init>()V

    .line 44
    .local v1, "dialog":Lcom/android/settings/deviceinfo/aboutphone/DeviceNameWarningDialog;
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/deviceinfo/aboutphone/DeviceNameWarningDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 45
    const-string v2, "DeviceNameWarningDlg"

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/deviceinfo/aboutphone/DeviceNameWarningDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 50
    const/16 v0, 0x4c3

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/aboutphone/DeviceNameWarningDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;

    .line 67
    .local v0, "host":Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->onSetDeviceNameConfirm()V

    .line 70
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 55
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/aboutphone/DeviceNameWarningDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 56
    const v1, 0x7f1208f2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 57
    const v1, 0x7f12003f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 58
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 59
    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 60
    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 55
    return-object v0
.end method
