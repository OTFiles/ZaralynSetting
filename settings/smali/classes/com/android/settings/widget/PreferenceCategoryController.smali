.class public Lcom/android/settings/widget/PreferenceCategoryController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "PreferenceCategoryController.java"


# instance fields
.field private final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field private final mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    iput-object p2, p0, Lcom/android/settings/widget/PreferenceCategoryController;->mKey:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/PreferenceCategoryController;->mChildren:Ljava/util/List;

    .line 41
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/android/settings/widget/PreferenceCategoryController;->mChildren:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/widget/PreferenceCategoryController;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/PreferenceCategoryController;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 50
    .local v1, "controller":Lcom/android/settingslib/core/AbstractPreferenceController;
    invoke-virtual {v1}, Lcom/android/settingslib/core/AbstractPreferenceController;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    const/4 v0, 0x0

    return v0

    .line 53
    .end local v1
    :cond_1
    goto :goto_0

    .line 54
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 46
    :cond_3
    :goto_1
    const/4 v0, 0x2

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/android/settings/widget/PreferenceCategoryController;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;)",
            "Lcom/android/settings/widget/PreferenceCategoryController;"
        }
    .end annotation

    .line 64
    .local p1, "childrenController":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    iget-object v0, p0, Lcom/android/settings/widget/PreferenceCategoryController;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 65
    if-eqz p1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/settings/widget/PreferenceCategoryController;->mChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 68
    :cond_0
    return-object p0
.end method
