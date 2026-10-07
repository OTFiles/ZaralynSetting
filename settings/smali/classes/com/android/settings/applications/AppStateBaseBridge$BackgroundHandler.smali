.class Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;
.super Landroid/os/Handler;
.source "AppStateBaseBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppStateBaseBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/AppStateBaseBridge;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/AppStateBaseBridge;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 128
    iput-object p1, p0, Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;->this$0:Lcom/android/settings/applications/AppStateBaseBridge;

    .line 129
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 130
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 134
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 140
    :pswitch_0    # 0x2
    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;->this$0:Lcom/android/settings/applications/AppStateBaseBridge;

    iget-object v0, v0, Lcom/android/settings/applications/AppStateBaseBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    .line 141
    .local v0, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 142
    .local v2, "N":I
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 143
    .local v3, "pkg":Ljava/lang/String;
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 144
    .local v4, "uid":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 145
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 146
    .local v6, "app":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    iget-object v7, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v7, v4, :cond_0

    iget-object v7, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 147
    iget-object v7, p0, Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;->this$0:Lcom/android/settings/applications/AppStateBaseBridge;

    invoke-virtual {v7, v6, v3, v4}, Lcom/android/settings/applications/AppStateBaseBridge;->updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V

    .line 144
    .end local v6
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 150
    .end local v5
    :cond_1
    iget-object v5, p0, Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;->this$0:Lcom/android/settings/applications/AppStateBaseBridge;

    iget-object v5, v5, Lcom/android/settings/applications/AppStateBaseBridge;->mMainHandler:Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;

    invoke-virtual {v5, v1}, Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;->sendEmptyMessage(I)Z

    .end local v0
    .end local v2
    .end local v3
    .end local v4
    goto :goto_1

    .line 136
    :pswitch_1    # 0x1
    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;->this$0:Lcom/android/settings/applications/AppStateBaseBridge;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateBaseBridge;->loadAllExtraInfo()V

    .line 137
    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;->this$0:Lcom/android/settings/applications/AppStateBaseBridge;

    iget-object v0, v0, Lcom/android/settings/applications/AppStateBaseBridge;->mMainHandler:Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;->sendEmptyMessage(I)Z

    .line 138
    nop

    .line 153
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method
