.class public Lcom/android/settings/wrapper/OverlayManagerWrapper;
.super Ljava/lang/Object;
.source "OverlayManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;
    }
.end annotation


# instance fields
.field private final mOverlayManager:Landroid/content/om/IOverlayManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    const-string v0, "overlay"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wrapper/OverlayManagerWrapper;-><init>(Landroid/content/om/IOverlayManager;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/om/IOverlayManager;)V
    .locals 0
    .param p1, "overlayManager"    # Landroid/content/om/IOverlayManager;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/settings/wrapper/OverlayManagerWrapper;->mOverlayManager:Landroid/content/om/IOverlayManager;

    .line 34
    return-void
.end method


# virtual methods
.method public getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .param p1, "overlay"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/android/settings/wrapper/OverlayManagerWrapper;->mOverlayManager:Landroid/content/om/IOverlayManager;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 45
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wrapper/OverlayManagerWrapper;->mOverlayManager:Landroid/content/om/IOverlayManager;

    .line 46
    invoke-interface {v0, p1, p2}, Landroid/content/om/IOverlayManager;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 47
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 49
    new-instance v3, Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/om/OverlayInfo;

    invoke-direct {v3, v4}, Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;-><init>(Landroid/content/om/OverlayInfo;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    .end local v2
    :cond_1
    return-object v1

    .line 52
    .end local v0
    .end local v1
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setEnabled(Ljava/lang/String;ZI)Z
    .locals 2
    .param p1, "overlay"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .line 58
    iget-object v0, p0, Lcom/android/settings/wrapper/OverlayManagerWrapper;->mOverlayManager:Landroid/content/om/IOverlayManager;

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x0

    return v0

    .line 62
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wrapper/OverlayManagerWrapper;->mOverlayManager:Landroid/content/om/IOverlayManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z

    move-result v0

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setEnabledExclusiveInCategory(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "overlay"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 69
    iget-object v0, p0, Lcom/android/settings/wrapper/OverlayManagerWrapper;->mOverlayManager:Landroid/content/om/IOverlayManager;

    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x0

    return v0

    .line 73
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wrapper/OverlayManagerWrapper;->mOverlayManager:Landroid/content/om/IOverlayManager;

    invoke-interface {v0, p1, p2}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z

    move-result v0

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
