.class public Lcom/android/settings/fingerprint/SetupFingerprintEnrollFindSensor$SkipFingerprintDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "SetupFingerprintEnrollFindSensor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/SetupFingerprintEnrollFindSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SkipFingerprintDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 70
    const/16 v0, 0x23d

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .line 89
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFindSensor$SkipFingerprintDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 92
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 93
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 94
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 98
    .end local v0
    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFindSensor$SkipFingerprintDialog;->onCreateDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateDialogBuilder()Landroid/app/AlertDialog$Builder;
    .locals 2

    .line 80
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFindSensor$SkipFingerprintDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 81
    const v1, 0x7f120cd4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 82
    const v1, 0x7f120d45

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 83
    const v1, 0x7f120685

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 84
    const v1, 0x7f120cd3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 80
    return-object v0
.end method

.method public show(Landroid/app/FragmentManager;)V
    .locals 1
    .param p1, "manager"    # Landroid/app/FragmentManager;

    .line 101
    const-string v0, "skip_dialog"

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFindSensor$SkipFingerprintDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 102
    return-void
.end method
