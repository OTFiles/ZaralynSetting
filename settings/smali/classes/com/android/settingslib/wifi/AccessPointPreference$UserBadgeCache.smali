.class public Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;
.super Ljava/lang/Object;
.source "AccessPointPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/AccessPointPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserBadgeCache"
.end annotation


# instance fields
.field private final mBadges:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;->mBadges:Landroid/util/SparseArray;

    .line 343
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;->mPm:Landroid/content/pm/PackageManager;

    .line 344
    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;
    .param p1, "x1"    # I

    .line 338
    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;->getUserBadge(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getUserBadge(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "userId"    # I

    .line 347
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;->mBadges:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 348
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 349
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;->mPm:Landroid/content/pm/PackageManager;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 350
    .local v1, "badge":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;->mBadges:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 351
    return-object v1

    .line 353
    .end local v1
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;->mBadges:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    return-object v1
.end method
