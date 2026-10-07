.class public Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "PrivateVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/PrivateVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OtherInfoFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 777
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/storage/VolumeInfo;I)V
    .locals 5
    .param p0, "parent"    # Landroid/app/Fragment;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "sharedVol"    # Landroid/os/storage/VolumeInfo;
    .param p3, "userId"    # I

    .line 779
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 781
    :cond_0
    new-instance v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;-><init>()V

    .line 782
    .local v0, "dialog":Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 783
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 784
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->buildBrowseIntent()Landroid/content/Intent;

    move-result-object v2

    .line 787
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.USER_ID"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 788
    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 789
    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 790
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "otherInfo"

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 791
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 795
    const/16 v0, 0x236

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 800
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 802
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 803
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 805
    .local v2, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 806
    .local v3, "builder":Landroid/app/AlertDialog$Builder;
    nop

    .line 807
    const v4, 0x7f120d9d

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 806
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 809
    new-instance v4, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment$1;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment$1;-><init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;Landroid/content/Intent;)V

    const v5, 0x7f120db9

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 816
    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 818
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method
