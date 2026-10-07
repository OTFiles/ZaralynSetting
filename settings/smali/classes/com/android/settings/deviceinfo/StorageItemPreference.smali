.class public Lcom/android/settings/deviceinfo/StorageItemPreference;
.super Landroid/support/v7/preference/Preference;
.source "StorageItemPreference.java"


# instance fields
.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressPercent:I

.field public userHandle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mProgressPercent:I

    .line 45
    const v0, 0x7f0d01b6

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setLayoutResource(I)V

    .line 46
    const v0, 0x7f12089f

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(I)V

    .line 47
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 75
    const v0, 0x102000d

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mProgressBar:Landroid/widget/ProgressBar;

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->updateProgressBar()V

    .line 77
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 78
    return-void
.end method

.method public setStorageSize(JJ)V
    .locals 2
    .param p1, "size"    # J
    .param p3, "total"    # J

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->Formatter_formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 57
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mProgressPercent:I

    goto :goto_0

    .line 60
    :cond_0
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p1

    div-long/2addr v0, p3

    long-to-int v0, v0

    iput v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mProgressPercent:I

    .line 62
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->updateProgressBar()V

    .line 63
    return-void
.end method

.method protected updateProgressBar()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mProgressPercent:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 70
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mProgressPercent:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 71
    return-void

    .line 67
    :cond_1
    :goto_0
    return-void
.end method
