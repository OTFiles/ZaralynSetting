.class public Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "StorageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiskInitFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 503
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Fragment;ILjava/lang/String;)V
    .locals 4
    .param p0, "parent"    # Landroid/app/Fragment;
    .param p1, "resId"    # I
    .param p2, "diskId"    # Ljava/lang/String;

    .line 510
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 511
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 512
    const-string v1, "android.os.storage.extra.DISK_ID"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    new-instance v1, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;

    invoke-direct {v1}, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;-><init>()V

    .line 515
    .local v1, "dialog":Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;
    invoke-virtual {v1, v0}, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;->setArguments(Landroid/os/Bundle;)V

    .line 516
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 517
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "disk_init"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 518
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 506
    const/16 v0, 0x231

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 522
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 523
    .local v0, "context":Landroid/content/Context;
    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 525
    .local v1, "sm":Landroid/os/storage/StorageManager;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 526
    .local v2, "resId":I
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "android.os.storage.extra.DISK_ID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 527
    .local v3, "diskId":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/os/storage/StorageManager;->findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;

    move-result-object v4

    .line 529
    .local v4, "disk":Landroid/os/storage/DiskInfo;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 530
    .local v5, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/CharSequence;

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 532
    new-instance v6, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment$1;

    invoke-direct {v6, p0, v0, v3}, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment$1;-><init>(Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;Landroid/content/Context;Ljava/lang/String;)V

    const v7, 0x7f120dc3

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 541
    const v6, 0x7f120358

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 543
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6
.end method
