.class Lcom/android/settings/applications/AppStateInstallAppsBridge$1;
.super Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;
.source "AppStateInstallAppsBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppStateInstallAppsBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;-><init>()V

    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 2
    .param p1, "info"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 145
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    if-nez v0, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    .line 149
    .local v0, "state":Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;
    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->isPotentialAppSource()Z

    move-result v1

    return v1

    .line 146
    .end local v0
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public init()V
    .locals 0

    .line 141
    return-void
.end method
