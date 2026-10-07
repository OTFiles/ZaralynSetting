.class abstract Lcom/android/settings/accessibility/SettingsContentObserver;
.super Landroid/database/ContentObserver;
.source "SettingsContentObserver.java"


# instance fields
.field private final mKeysToObserve:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .line 32
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/accessibility/SettingsContentObserver;->mKeysToObserve:Ljava/util/List;

    .line 33
    iget-object v0, p0, Lcom/android/settings/accessibility/SettingsContentObserver;->mKeysToObserve:Ljava/util/List;

    const-string v1, "accessibility_enabled"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/android/settings/accessibility/SettingsContentObserver;->mKeysToObserve:Ljava/util/List;

    const-string v1, "enabled_accessibility_services"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/util/List;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p2, "keysToObserve":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/SettingsContentObserver;-><init>(Landroid/os/Handler;)V

    .line 39
    iget-object v0, p0, Lcom/android/settings/accessibility/SettingsContentObserver;->mKeysToObserve:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 40
    return-void
.end method


# virtual methods
.method public register(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .line 43
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/accessibility/SettingsContentObserver;->mKeysToObserve:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 44
    iget-object v2, p0, Lcom/android/settings/accessibility/SettingsContentObserver;->mKeysToObserve:Ljava/util/List;

    .line 45
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 44
    invoke-virtual {p1, v2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    .end local v1
    :cond_0
    return-void
.end method

.method public unregister(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .line 50
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 51
    return-void
.end method
