.class public Lcom/android/settings/development/qstile/DevelopmentTileConfigFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "DevelopmentTileConfigFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    new-instance v1, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 34
    const-string v0, "DevelopmentTileConfig"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 51
    const/16 v0, 0x4c8

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 39
    const v0, 0x7f150046

    return v0
.end method
