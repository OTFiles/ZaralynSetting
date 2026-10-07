.class Lcom/android/settingslib/applications/ApplicationsState$MainHandler;
.super Landroid/os/Handler;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/applications/ApplicationsState;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/applications/ApplicationsState;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settingslib/applications/ApplicationsState;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 861
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 862
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 863
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 867
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState;->rebuildActiveSessions()V

    .line 868
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_9

    .line 929
    :pswitch_0    # 0x8
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 930
    .local v1, "sessionRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 931
    .local v2, "session":Lcom/android/settingslib/applications/ApplicationsState$Session;
    if-eqz v2, :cond_0

    .line 932
    iget-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    invoke-interface {v3}, Lcom/android/settingslib/applications/ApplicationsState$Callbacks;->onLoadEntriesCompleted()V

    .line 934
    .end local v1
    .end local v2
    :cond_0
    goto :goto_0

    .line 921
    :pswitch_1    # 0x7
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 922
    .restart local v1
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 923
    .restart local v2
    if-eqz v2, :cond_1

    .line 924
    iget-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    invoke-interface {v3}, Lcom/android/settingslib/applications/ApplicationsState$Callbacks;->onLauncherInfoChanged()V

    .line 926
    .end local v1
    .end local v2
    :cond_1
    goto :goto_1

    .line 927
    :cond_2
    goto/16 :goto_9

    .line 912
    :pswitch_2    # 0x6
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 913
    .restart local v1
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 914
    .restart local v2
    if-eqz v2, :cond_4

    .line 915
    iget-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    invoke-interface {v3, v4}, Lcom/android/settingslib/applications/ApplicationsState$Callbacks;->onRunningStateChanged(Z)V

    .line 918
    .end local v1
    .end local v2
    :cond_4
    goto :goto_2

    .line 919
    :cond_5
    goto/16 :goto_9

    .line 904
    :pswitch_3    # 0x5
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 905
    .restart local v1
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 906
    .restart local v2
    if-eqz v2, :cond_6

    .line 907
    iget-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    invoke-interface {v3}, Lcom/android/settingslib/applications/ApplicationsState$Callbacks;->onAllSizesComputed()V

    .line 909
    .end local v1
    .end local v2
    :cond_6
    goto :goto_4

    .line 910
    :cond_7
    goto/16 :goto_9

    .line 895
    :pswitch_4    # 0x4
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 896
    .restart local v1
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 897
    .restart local v2
    if-eqz v2, :cond_8

    .line 898
    iget-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/android/settingslib/applications/ApplicationsState$Callbacks;->onPackageSizeChanged(Ljava/lang/String;)V

    .line 901
    .end local v1
    .end local v2
    :cond_8
    goto :goto_5

    .line 902
    :cond_9
    goto/16 :goto_9

    .line 887
    :pswitch_5    # 0x3
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 888
    .restart local v1
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 889
    .restart local v2
    if-eqz v2, :cond_a

    .line 890
    iget-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    invoke-interface {v3}, Lcom/android/settingslib/applications/ApplicationsState$Callbacks;->onPackageIconChanged()V

    .line 892
    .end local v1
    .end local v2
    :cond_a
    goto :goto_6

    .line 893
    :cond_b
    goto :goto_9

    .line 879
    :pswitch_6    # 0x2
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 880
    .restart local v1
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 881
    .restart local v2
    if-eqz v2, :cond_c

    .line 882
    iget-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    invoke-interface {v3}, Lcom/android/settingslib/applications/ApplicationsState$Callbacks;->onPackageListChanged()V

    .line 884
    .end local v1
    .end local v2
    :cond_c
    goto :goto_7

    .line 885
    :cond_d
    goto :goto_9

    .line 870
    :pswitch_7    # 0x1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 871
    .local v0, "s":Lcom/android/settingslib/applications/ApplicationsState$Session;
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 872
    .local v2, "sessionRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 873
    .local v3, "session":Lcom/android/settingslib/applications/ApplicationsState$Session;
    if-eqz v3, :cond_e

    if-ne v3, v0, :cond_e

    .line 874
    iget-object v4, v0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    iget-object v5, v0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mLastAppList:Ljava/util/ArrayList;

    invoke-interface {v4, v5}, Lcom/android/settingslib/applications/ApplicationsState$Callbacks;->onRebuildComplete(Ljava/util/ArrayList;)V

    .line 876
    .end local v2
    .end local v3
    :cond_e
    goto :goto_8

    .line 877
    .end local v0
    :cond_f
    nop

    .line 937
    :cond_10
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7    # 0x1
        :pswitch_6    # 0x2
        :pswitch_5    # 0x3
        :pswitch_4    # 0x4
        :pswitch_3    # 0x5
        :pswitch_2    # 0x6
        :pswitch_1    # 0x7
        :pswitch_0    # 0x8
    .end packed-switch
.end method
