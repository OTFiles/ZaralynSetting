.class public Lcom/android/settings/deviceinfo/PrivateVolumeForget;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PrivateVolumeForget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;
    }
.end annotation


# instance fields
.field private final mConfirmListener:Landroid/view/View$OnClickListener;

.field private mRecord:Landroid/os/storage/VolumeRecord;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 79
    new-instance v0, Lcom/android/settings/deviceinfo/PrivateVolumeForget$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/PrivateVolumeForget$1;-><init>(Lcom/android/settings/deviceinfo/PrivateVolumeForget;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget;->mConfirmListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/PrivateVolumeForget;)Landroid/os/storage/VolumeRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/PrivateVolumeForget;

    .line 41
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget;->mRecord:Landroid/os/storage/VolumeRecord;

    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 48
    const/16 v0, 0x2a

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeForget;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 55
    .local v0, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeForget;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.os.storage.extra.FS_UUID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "fsUuid":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeForget;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 59
    return-object v2

    .line 61
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findRecordByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget;->mRecord:Landroid/os/storage/VolumeRecord;

    .line 63
    iget-object v3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget;->mRecord:Landroid/os/storage/VolumeRecord;

    if-nez v3, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeForget;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 65
    return-object v2

    .line 68
    :cond_1
    const v2, 0x7f0d01b3

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 69
    .local v2, "view":Landroid/view/View;
    const v4, 0x7f0a0083

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 70
    .local v4, "body":Landroid/widget/TextView;
    const v5, 0x7f0a00f3

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 72
    .local v5, "confirm":Landroid/widget/Button;
    const v6, 0x7f120daf

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/PrivateVolumeForget;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/CharSequence;

    iget-object v8, p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget;->mRecord:Landroid/os/storage/VolumeRecord;

    .line 73
    invoke-virtual {v8}, Landroid/os/storage/VolumeRecord;->getNickname()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    .line 72
    invoke-static {v6, v7}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget;->mConfirmListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-object v2
.end method
