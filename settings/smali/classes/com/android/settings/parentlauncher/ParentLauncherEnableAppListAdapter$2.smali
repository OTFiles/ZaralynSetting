.class Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$2;
.super Ljava/lang/Object;
.source "ParentLauncherEnableAppListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->onlyUpdateAdapterNbDuibiItemStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;

    .line 223
    iput-object p1, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$2;->this$0:Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 226
    const-string v0, ""

    const-string v1, "=====divhee=====onlyUpdateAdapterNbDuibiItemStatus====="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$2;->this$0:Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->notifyDataSetChanged()V

    .line 228
    return-void
.end method
