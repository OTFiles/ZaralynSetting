.class abstract Lcom/android/settings/enterprise/ApplicationListFragment$AdminGrantedPermission;
.super Lcom/android/settings/enterprise/ApplicationListFragment;
.source "ApplicationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/enterprise/ApplicationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AdminGrantedPermission"
.end annotation


# instance fields
.field private final mPermissions:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "permissions"    # [Ljava/lang/String;

    .line 63
    invoke-direct {p0}, Lcom/android/settings/enterprise/ApplicationListFragment;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/settings/enterprise/ApplicationListFragment$AdminGrantedPermission;->mPermissions:[Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method public buildApplicationList(Landroid/content/Context;Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;

    .line 70
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/ApplicationFeatureProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/enterprise/ApplicationListFragment$AdminGrantedPermission;->mPermissions:[Ljava/lang/String;

    .line 71
    invoke-interface {v0, v1, p2}, Lcom/android/settings/applications/ApplicationFeatureProvider;->listAppsWithAdminGrantedPermissions([Ljava/lang/String;Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;)V

    .line 72
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 76
    const/16 v0, 0x3ab

    return v0
.end method
