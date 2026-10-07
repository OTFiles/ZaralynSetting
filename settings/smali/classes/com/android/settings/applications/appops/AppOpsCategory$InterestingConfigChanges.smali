.class public Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;
.super Ljava/lang/Object;
.source "AppOpsCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appops/AppOpsCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InterestingConfigChanges"
.end annotation


# instance fields
.field final mLastConfiguration:Landroid/content/res/Configuration;

.field mLastDensity:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;->mLastConfiguration:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method public applyNewConfig(Landroid/content/res/Resources;)Z
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 72
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 73
    .local v0, "configChanges":I
    iget v1, p0, Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;->mLastDensity:I

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    .line 74
    .local v1, "densityChanged":Z
    :goto_0
    if-nez v1, :cond_2

    and-int/lit16 v2, v0, 0x304

    if-eqz v2, :cond_1

    goto :goto_1

    .line 79
    :cond_1
    return v3

    .line 76
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, p0, Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;->mLastDensity:I

    .line 77
    return v4
.end method
