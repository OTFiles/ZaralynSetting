.class public Lcom/android/settings/users/UserFeatureProviderImpl;
.super Ljava/lang/Object;
.source "UserFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/users/UserFeatureProvider;


# instance fields
.field mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/users/UserFeatureProviderImpl;->mUm:Landroid/os/UserManager;

    .line 30
    return-void
.end method


# virtual methods
.method public getUserProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/android/settings/users/UserFeatureProviderImpl;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
