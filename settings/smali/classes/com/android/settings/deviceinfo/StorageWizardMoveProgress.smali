.class public Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardMoveProgress.java"


# instance fields
.field private final mCallback:Landroid/content/pm/PackageManager$MoveCallback;

.field private mMoveId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    .line 64
    new-instance v0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress$1;-><init>(Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;

    .line 33
    iget v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->mMoveId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;I)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;
    .param p1, "x1"    # I

    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->moveStatusToMessage(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private moveStatusToMessage(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "returnCode"    # I

    .line 84
    const/4 v0, -0x8

    if-eq p1, v0, :cond_0

    const v0, 0x7f12071d

    packed-switch p1, :pswitch_data_0

    .line 99
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 86
    :pswitch_0    # -0x1
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 90
    :pswitch_1    # -0x2
    const v0, 0x7f120582

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 96
    :pswitch_2    # -0x3
    const v0, 0x7f120e5e

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 92
    :pswitch_3    # -0x4
    const v0, 0x7f12011d

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 94
    :pswitch_4    # -0x5
    const v0, 0x7f120728

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 88
    :cond_0
    const v0, 0x7f1208e8

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_4    # -0x5
        :pswitch_3    # -0x4
        :pswitch_2    # -0x3
        :pswitch_1    # -0x2
        :pswitch_0    # -0x1
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 38
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 39
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->finish()V

    .line 41
    return-void

    .line 43
    :cond_0
    const v0, 0x7f0d01bf

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.content.pm.extra.MOVE_ID"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->mMoveId:I

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "appName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->mStorage:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "volumeName":Ljava/lang/String;
    const v2, 0x7f080213

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->setIcon(I)V

    .line 50
    const v2, 0x7f120e12

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {p0, v2, v4}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->setHeaderText(I[Ljava/lang/CharSequence;)V

    .line 51
    const v2, 0x7f120e10

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/CharSequence;

    aput-object v1, v4, v5

    aput-object v0, v4, v3

    invoke-virtual {p0, v2, v4}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->setBodyText(I[Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->registerMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;Landroid/os/Handler;)V

    .line 55
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    iget v3, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->mMoveId:I

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->mMoveId:I

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getMoveStatus(I)I

    move-result v4

    const-wide/16 v5, -0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/pm/PackageManager$MoveCallback;->onStatusChanged(IIJ)V

    .line 56
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 60
    invoke-super {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onDestroy()V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->unregisterMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;)V

    .line 62
    return-void
.end method
