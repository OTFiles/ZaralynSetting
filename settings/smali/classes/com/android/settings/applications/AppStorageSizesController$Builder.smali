.class public Lcom/android/settings/applications/AppStorageSizesController$Builder;
.super Ljava/lang/Object;
.source "AppStorageSizesController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppStorageSizesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAppSize:Landroid/support/v7/preference/Preference;

.field private mCacheSize:Landroid/support/v7/preference/Preference;

.field private mComputing:I

.field private mDataSize:Landroid/support/v7/preference/Preference;

.field private mError:I

.field private mTotalSize:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/settings/applications/AppStorageSizesController;
    .locals 9

    .line 174
    new-instance v8, Lcom/android/settings/applications/AppStorageSizesController;

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSizesController$Builder;->mTotalSize:Landroid/support/v7/preference/Preference;

    .line 175
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/support/v7/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSizesController$Builder;->mAppSize:Landroid/support/v7/preference/Preference;

    .line 176
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/support/v7/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSizesController$Builder;->mDataSize:Landroid/support/v7/preference/Preference;

    .line 177
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/support/v7/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSizesController$Builder;->mCacheSize:Landroid/support/v7/preference/Preference;

    .line 178
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/support/v7/preference/Preference;

    iget v5, p0, Lcom/android/settings/applications/AppStorageSizesController$Builder;->mComputing:I

    iget v6, p0, Lcom/android/settings/applications/AppStorageSizesController$Builder;->mError:I

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/applications/AppStorageSizesController;-><init>(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;IILcom/android/settings/applications/AppStorageSizesController$1;)V

    .line 174
    return-object v8
.end method

.method public setAppSizePreference(Landroid/support/v7/preference/Preference;)Lcom/android/settings/applications/AppStorageSizesController$Builder;
    .locals 0
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 144
    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSizesController$Builder;->mAppSize:Landroid/support/v7/preference/Preference;

    .line 145
    return-object p0
.end method

.method public setCacheSizePreference(Landroid/support/v7/preference/Preference;)Lcom/android/settings/applications/AppStorageSizesController$Builder;
    .locals 0
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 154
    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSizesController$Builder;->mCacheSize:Landroid/support/v7/preference/Preference;

    .line 155
    return-object p0
.end method

.method public setComputingString(I)Lcom/android/settings/applications/AppStorageSizesController$Builder;
    .locals 0
    .param p1, "sequence"    # I

    .line 164
    iput p1, p0, Lcom/android/settings/applications/AppStorageSizesController$Builder;->mComputing:I

    .line 165
    return-object p0
.end method

.method public setDataSizePreference(Landroid/support/v7/preference/Preference;)Lcom/android/settings/applications/AppStorageSizesController$Builder;
    .locals 0
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 149
    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSizesController$Builder;->mDataSize:Landroid/support/v7/preference/Preference;

    .line 150
    return-object p0
.end method

.method public setErrorString(I)Lcom/android/settings/applications/AppStorageSizesController$Builder;
    .locals 0
    .param p1, "sequence"    # I

    .line 169
    iput p1, p0, Lcom/android/settings/applications/AppStorageSizesController$Builder;->mError:I

    .line 170
    return-object p0
.end method

.method public setTotalSizePreference(Landroid/support/v7/preference/Preference;)Lcom/android/settings/applications/AppStorageSizesController$Builder;
    .locals 0
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 159
    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSizesController$Builder;->mTotalSize:Landroid/support/v7/preference/Preference;

    .line 160
    return-object p0
.end method
