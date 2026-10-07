.class public Lcom/android/settings/development/BluetoothA2dpHwOffloadRebootDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "BluetoothA2dpHwOffloadRebootDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/BluetoothA2dpHwOffloadRebootDialog$OnA2dpHwDialogConfirmedListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;)V
    .locals 3
    .param p0, "host"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;
    .param p1, "controller"    # Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;

    .line 38
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 39
    .local v0, "manager":Landroid/app/FragmentManager;
    const-string v1, "BluetoothA2dpHwOffloadReboot"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lcom/android/settings/development/BluetoothA2dpHwOffloadRebootDialog;

    invoke-direct {v1}, Lcom/android/settings/development/BluetoothA2dpHwOffloadRebootDialog;-><init>()V

    .line 42
    .local v1, "dialog":Lcom/android/settings/development/BluetoothA2dpHwOffloadRebootDialog;
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/development/BluetoothA2dpHwOffloadRebootDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 43
    const-string v2, "BluetoothA2dpHwOffloadReboot"

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/development/BluetoothA2dpHwOffloadRebootDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 45
    .end local v1
    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 49
    const/16 v0, 0x5a1

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 66
    nop

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/development/BluetoothA2dpHwOffloadRebootDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/BluetoothA2dpHwOffloadRebootDialog$OnA2dpHwDialogConfirmedListener;

    .line 68
    .local v0, "host":Lcom/android/settings/development/BluetoothA2dpHwOffloadRebootDialog$OnA2dpHwDialogConfirmedListener;
    if-nez v0, :cond_0

    .line 69
    return-void

    .line 71
    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 72
    invoke-interface {v0}, Lcom/android/settings/development/BluetoothA2dpHwOffloadRebootDialog$OnA2dpHwDialogConfirmedListener;->onA2dpHwDialogConfirmed()V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/development/BluetoothA2dpHwOffloadRebootDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 74
    .local v1, "pm":Landroid/os/PowerManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 76
    .end local v1
    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 54
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/development/BluetoothA2dpHwOffloadRebootDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 55
    const v1, 0x7f12028a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 56
    const v1, 0x7f12028b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 57
    const v1, 0x7f120289

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 59
    const v1, 0x7f120288

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 54
    return-object v0
.end method
