.class Lcom/android/settings/applications/ManageApplicationsSettings$11;
.super Ljava/lang/Object;
.source "ManageApplicationsSettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ManageApplicationsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ManageApplicationsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageApplicationsSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/ManageApplicationsSettings;

    .line 1904
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$11;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 1907
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$11;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-static {p2}, Lcom/android/internal/app/IMediaContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/applications/ManageApplicationsSettings;->access$2602(Lcom/android/settings/applications/ManageApplicationsSettings;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 1908
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$11;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-static {v1}, Lcom/android/settings/applications/ManageApplicationsSettings;->access$600(Lcom/android/settings/applications/ManageApplicationsSettings;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1909
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$11;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-static {v1}, Lcom/android/settings/applications/ManageApplicationsSettings;->access$600(Lcom/android/settings/applications/ManageApplicationsSettings;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings$11;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-static {v2}, Lcom/android/settings/applications/ManageApplicationsSettings;->access$2600(Lcom/android/settings/applications/ManageApplicationsSettings;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->setContainerService(Lcom/android/internal/app/IMediaContainerService;)V

    .line 1908
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1911
    .end local v0
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 1915
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$11;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/applications/ManageApplicationsSettings;->access$2602(Lcom/android/settings/applications/ManageApplicationsSettings;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 1916
    return-void
.end method
