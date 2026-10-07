.class public Lcom/android/settings/deviceinfo/PrivateVolumeSettings$UserInfoFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "PrivateVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/PrivateVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserInfoFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 822
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Fragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 4
    .param p0, "parent"    # Landroid/app/Fragment;
    .param p1, "userLabel"    # Ljava/lang/CharSequence;
    .param p2, "userSize"    # Ljava/lang/CharSequence;

    .line 824
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 826
    :cond_0
    new-instance v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$UserInfoFragment;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$UserInfoFragment;-><init>()V

    .line 827
    .local v0, "dialog":Lcom/android/settings/deviceinfo/PrivateVolumeSettings$UserInfoFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$UserInfoFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 828
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 829
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 830
    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 831
    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$UserInfoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 832
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "userInfo"

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$UserInfoFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 833
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 837
    const/16 v0, 0x237

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 842
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$UserInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 844
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$UserInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 845
    .local v1, "userLabel":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$UserInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 847
    .local v2, "userSize":Ljava/lang/CharSequence;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 848
    .local v3, "builder":Landroid/app/AlertDialog$Builder;
    nop

    .line 849
    const v4, 0x7f120d9f

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$UserInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    .line 848
    invoke-static {v4, v5}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 851
    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 853
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method
