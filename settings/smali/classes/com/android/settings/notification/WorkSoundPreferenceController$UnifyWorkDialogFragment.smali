.class public Lcom/android/settings/notification/WorkSoundPreferenceController$UnifyWorkDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "WorkSoundPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/WorkSoundPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnifyWorkDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 314
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/notification/SoundSettings;)V
    .locals 3
    .param p0, "parent"    # Lcom/android/settings/notification/SoundSettings;

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 336
    .local v0, "fm":Landroid/app/FragmentManager;
    const-string v1, "UnifyWorkDialogFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 337
    new-instance v1, Lcom/android/settings/notification/WorkSoundPreferenceController$UnifyWorkDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/notification/WorkSoundPreferenceController$UnifyWorkDialogFragment;-><init>()V

    .line 338
    .local v1, "fragment":Lcom/android/settings/notification/WorkSoundPreferenceController$UnifyWorkDialogFragment;
    const/16 v2, 0xc8

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/notification/WorkSoundPreferenceController$UnifyWorkDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 339
    const-string v2, "UnifyWorkDialogFragment"

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/notification/WorkSoundPreferenceController$UnifyWorkDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 341
    .end local v1
    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 321
    const/16 v0, 0x229

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 345
    invoke-virtual {p0}, Lcom/android/settings/notification/WorkSoundPreferenceController$UnifyWorkDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/SoundSettings;

    .line 346
    .local v0, "soundSettings":Lcom/android/settings/notification/SoundSettings;
    invoke-virtual {v0}, Lcom/android/settings/notification/SoundSettings;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    invoke-virtual {v0}, Lcom/android/settings/notification/SoundSettings;->enableWorkSync()V

    .line 349
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 326
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/notification/WorkSoundPreferenceController$UnifyWorkDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 327
    const v1, 0x7f1211b1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 328
    const v1, 0x7f1211b0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 329
    const v1, 0x7f1211b2

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 330
    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 326
    return-object v0
.end method
