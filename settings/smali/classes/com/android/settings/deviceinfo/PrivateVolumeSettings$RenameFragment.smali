.class public Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "PrivateVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/PrivateVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenameFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 702
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;Landroid/os/storage/VolumeInfo;)V
    .locals 4
    .param p0, "parent"    # Lcom/android/settings/deviceinfo/PrivateVolumeSettings;
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 704
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 706
    :cond_0
    new-instance v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;-><init>()V

    .line 707
    .local v0, "dialog":Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 708
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 709
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "android.os.storage.extra.FS_UUID"

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;->setArguments(Landroid/os/Bundle;)V

    .line 711
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "rename"

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 712
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 716
    const/16 v0, 0x233

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 721
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 722
    .local v0, "context":Landroid/content/Context;
    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 724
    .local v1, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.os.storage.extra.FS_UUID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 725
    .local v2, "fsUuid":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v3

    .line 726
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->findRecordByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v4

    .line 728
    .local v4, "rec":Landroid/os/storage/VolumeRecord;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 729
    .local v5, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 731
    .local v6, "dialogInflater":Landroid/view/LayoutInflater;
    const/4 v7, 0x0

    const v8, 0x7f0d0096

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 732
    .local v8, "view":Landroid/view/View;
    const v9, 0x7f0a015b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 733
    .local v9, "nickname":Landroid/widget/EditText;
    invoke-virtual {v4}, Landroid/os/storage/VolumeRecord;->getNickname()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 735
    const v10, 0x7f120dce

    invoke-virtual {v5, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 736
    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 738
    new-instance v10, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment$1;

    invoke-direct {v10, p0, v1, v2, v9}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment$1;-><init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;Landroid/os/storage/StorageManager;Ljava/lang/String;Landroid/widget/EditText;)V

    const v11, 0x7f120c1b

    invoke-virtual {v5, v11, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 747
    const v10, 0x7f120358

    invoke-virtual {v5, v10, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 749
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    return-object v7
.end method
