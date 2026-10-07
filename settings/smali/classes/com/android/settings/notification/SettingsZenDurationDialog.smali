.class public Lcom/android/settings/notification/SettingsZenDurationDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "SettingsZenDurationDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 35
    const/16 v0, 0x53d

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 29
    new-instance v0, Lcom/android/settingslib/notification/ZenDurationDialog;

    .line 30
    invoke-virtual {p0}, Lcom/android/settings/notification/SettingsZenDurationDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/notification/ZenDurationDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/settingslib/notification/ZenDurationDialog;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 29
    return-object v0
.end method
