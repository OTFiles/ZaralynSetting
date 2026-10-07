.class Lcom/android/settings/ForcePortraitAppLandscape$5;
.super Ljava/lang/Object;
.source "ForcePortraitAppLandscape.java"

# interfaces
.implements Lcom/android/settings/porttapplandshow/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ForcePortraitAppLandscape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ForcePortraitAppLandscape;


# direct methods
.method constructor <init>(Lcom/android/settings/ForcePortraitAppLandscape;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/ForcePortraitAppLandscape;

    .line 256
    iput-object p1, p0, Lcom/android/settings/ForcePortraitAppLandscape$5;->this$0:Lcom/android/settings/ForcePortraitAppLandscape;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMove(II)Z
    .locals 1
    .param p1, "srcPosition"    # I
    .param p2, "targetPosition"    # I

    .line 284
    iget-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape$5;->this$0:Lcom/android/settings/ForcePortraitAppLandscape;

    invoke-static {v0}, Lcom/android/settings/ForcePortraitAppLandscape;->access$500(Lcom/android/settings/ForcePortraitAppLandscape;)Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape$5;->this$0:Lcom/android/settings/ForcePortraitAppLandscape;

    invoke-static {v0}, Lcom/android/settings/ForcePortraitAppLandscape;->access$500(Lcom/android/settings/ForcePortraitAppLandscape;)Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->getFilterNbHistory()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape$5;->this$0:Lcom/android/settings/ForcePortraitAppLandscape;

    invoke-static {v0}, Lcom/android/settings/ForcePortraitAppLandscape;->access$500(Lcom/android/settings/ForcePortraitAppLandscape;)Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->getFilterNbHistory()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 288
    iget-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape$5;->this$0:Lcom/android/settings/ForcePortraitAppLandscape;

    invoke-static {v0}, Lcom/android/settings/ForcePortraitAppLandscape;->access$500(Lcom/android/settings/ForcePortraitAppLandscape;)Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->notifyItemMoved(II)V

    .line 289
    const/4 v0, 0x1

    return v0

    .line 291
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSwiped(I)V
    .locals 1
    .param p1, "forcusposition"    # I

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape$5;->this$0:Lcom/android/settings/ForcePortraitAppLandscape;

    invoke-static {v0}, Lcom/android/settings/ForcePortraitAppLandscape;->access$500(Lcom/android/settings/ForcePortraitAppLandscape;)Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape$5;->this$0:Lcom/android/settings/ForcePortraitAppLandscape;

    invoke-static {v0}, Lcom/android/settings/ForcePortraitAppLandscape;->access$500(Lcom/android/settings/ForcePortraitAppLandscape;)Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->getFilterNbHistory()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape$5;->this$0:Lcom/android/settings/ForcePortraitAppLandscape;

    invoke-static {v0}, Lcom/android/settings/ForcePortraitAppLandscape;->access$500(Lcom/android/settings/ForcePortraitAppLandscape;)Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->getFilterNbHistory()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 275
    iget-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape$5;->this$0:Lcom/android/settings/ForcePortraitAppLandscape;

    invoke-static {v0}, Lcom/android/settings/ForcePortraitAppLandscape;->access$500(Lcom/android/settings/ForcePortraitAppLandscape;)Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->notifyItemRemoved(I)V

    .line 279
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 280
    .end local v0
    :goto_0
    return-void
.end method
