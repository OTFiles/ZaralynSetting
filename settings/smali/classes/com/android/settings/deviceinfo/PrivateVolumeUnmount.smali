.class public Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PrivateVolumeUnmount.java"


# instance fields
.field private final mConfirmListener:Landroid/view/View$OnClickListener;

.field private mDisk:Landroid/os/storage/DiskInfo;

.field private mVolume:Landroid/os/storage/VolumeInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 64
    new-instance v0, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount$1;-><init>(Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;->mConfirmListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;)Landroid/os/storage/VolumeInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;

    .line 36
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 42
    const/16 v0, 0x2a

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 49
    .local v0, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "volumeId":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 51
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/storage/StorageManager;->findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;->mDisk:Landroid/os/storage/DiskInfo;

    .line 53
    const/4 v2, 0x0

    const v3, 0x7f0d01b5

    invoke-virtual {p1, v3, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 54
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0a0083

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 55
    .local v4, "body":Landroid/widget/TextView;
    const v5, 0x7f0a00f3

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 57
    .local v5, "confirm":Landroid/widget/Button;
    const v6, 0x7f120db2

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/CharSequence;

    iget-object v8, p0, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;->mDisk:Landroid/os/storage/DiskInfo;

    .line 58
    invoke-virtual {v8}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    .line 57
    invoke-static {v6, v7}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;->mConfirmListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-object v3
.end method
