.class Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo$3;
.super Ljava/lang/Object;
.source "ManageApplicationsSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    .line 430
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo$3;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo$3;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->updateStorageUsageRun()V

    .line 434
    return-void
.end method
