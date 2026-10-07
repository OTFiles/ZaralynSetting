.class public Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "StorageWizardFormatConfirm.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic lambda$onCreateDialog$0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "diskId"    # Ljava/lang/String;
    .param p2, "formatForgetUuid"    # Ljava/lang/String;
    .param p3, "formatPrivate"    # Z
    .param p4, "dialog"    # Landroid/content/DialogInterface;
    .param p5, "which"    # I

    .line 97
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.os.storage.extra.DISK_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v1, "format_forget_uuid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string v1, "format_private"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 102
    return-void
.end method

.method private static show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "diskId"    # Ljava/lang/String;
    .param p2, "formatForgetUuid"    # Ljava/lang/String;
    .param p3, "formatPrivate"    # Z

    .line 55
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 56
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "android.os.storage.extra.DISK_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v1, "format_forget_uuid"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "format_private"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 60
    new-instance v1, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;

    invoke-direct {v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;-><init>()V

    .line 61
    .local v1, "fragment":Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;
    invoke-virtual {v1, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->setArguments(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "format_warning"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static showPrivate(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "diskId"    # Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 51
    return-void
.end method

.method public static showPublic(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "diskId"    # Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 43
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 67
    const/16 v0, 0x55f

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 74
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 75
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "android.os.storage.extra.DISK_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "diskId":Ljava/lang/String;
    const-string v3, "format_forget_uuid"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "formatForgetUuid":Ljava/lang/String;
    const-string v4, "format_private"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 79
    .local v4, "formatPrivate":Z
    const-class v6, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageManager;

    .line 80
    invoke-virtual {v6, v2}, Landroid/os/storage/StorageManager;->findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;

    move-result-object v6

    .line 82
    .local v6, "disk":Landroid/os/storage/DiskInfo;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 83
    .local v7, "builder":Landroid/app/AlertDialog$Builder;
    nop

    .line 84
    const v8, 0x7f120deb

    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/CharSequence;

    .line 85
    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->getShortDescription()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    .line 83
    invoke-static {v8, v10}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 86
    nop

    .line 87
    const v8, 0x7f120dea

    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/CharSequence;

    .line 88
    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    .line 89
    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->getShortDescription()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v9

    .line 90
    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->getShortDescription()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v10, v12

    .line 86
    invoke-static {v8, v10}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 92
    const/high16 v8, 0x1040000

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 93
    nop

    .line 94
    const v8, 0x7f120de9

    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    new-array v9, v9, [Ljava/lang/CharSequence;

    .line 95
    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->getShortDescription()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    .line 94
    invoke-static {v8, v9}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v8, Lcom/android/settings/deviceinfo/-$$Lambda$StorageWizardFormatConfirm$c4jIKjriuaEtVR7ERojcHILapk8;

    invoke-direct {v8, v0, v2, v3, v4}, Lcom/android/settings/deviceinfo/-$$Lambda$StorageWizardFormatConfirm$c4jIKjriuaEtVR7ERojcHILapk8;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 93
    invoke-virtual {v7, v5, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 104
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method
