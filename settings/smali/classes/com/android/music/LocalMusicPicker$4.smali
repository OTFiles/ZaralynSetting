.class Lcom/android/music/LocalMusicPicker$4;
.super Ljava/lang/Object;
.source "LocalMusicPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/LocalMusicPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/LocalMusicPicker;


# direct methods
.method constructor <init>(Lcom/android/music/LocalMusicPicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/music/LocalMusicPicker;

    .line 899
    iput-object p1, p0, Lcom/android/music/LocalMusicPicker$4;->this$0:Lcom/android/music/LocalMusicPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 904
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    :try_start_0
    iget-object v1, p0, Lcom/android/music/LocalMusicPicker$4;->this$0:Lcom/android/music/LocalMusicPicker;

    iget-object v1, v1, Lcom/android/music/LocalMusicPicker;->mPopWinDlg:Lcom/android/settings/custom/PopWinDialog;

    if-nez v1, :cond_0

    goto :goto_3

    .line 907
    :cond_0
    iget-object v1, p0, Lcom/android/music/LocalMusicPicker$4;->this$0:Lcom/android/music/LocalMusicPicker;

    iget-object v1, v1, Lcom/android/music/LocalMusicPicker;->mPopWinDlg:Lcom/android/settings/custom/PopWinDialog;

    if-eqz v1, :cond_1

    .line 908
    iget-object v1, p0, Lcom/android/music/LocalMusicPicker$4;->this$0:Lcom/android/music/LocalMusicPicker;

    iget-object v1, v1, Lcom/android/music/LocalMusicPicker;->mPopWinDlg:Lcom/android/settings/custom/PopWinDialog;

    invoke-virtual {v1}, Lcom/android/settings/custom/PopWinDialog;->exit()V

    .line 910
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 914
    :pswitch_0    # 0x2 0x3 0x1
    iget-object v1, p0, Lcom/android/music/LocalMusicPicker$4;->this$0:Lcom/android/music/LocalMusicPicker;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/music/LocalMusicPicker;->setSortMode(I)Z

    .line 915
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    .line 922
    :goto_0
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/music/LocalMusicPicker$4;->this$0:Lcom/android/music/LocalMusicPicker;

    iget-object v1, v1, Lcom/android/music/LocalMusicPicker;->mPopWinDlg:Lcom/android/settings/custom/PopWinDialog;

    if-eqz v1, :cond_2

    .line 923
    iget-object v1, p0, Lcom/android/music/LocalMusicPicker$4;->this$0:Lcom/android/music/LocalMusicPicker;

    iget-object v1, v1, Lcom/android/music/LocalMusicPicker;->mPopWinDlg:Lcom/android/settings/custom/PopWinDialog;

    if-eqz v1, :cond_2

    goto :goto_1

    .line 922
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 919
    :catch_0
    move-exception v1

    .line 920
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 922
    .end local v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/music/LocalMusicPicker$4;->this$0:Lcom/android/music/LocalMusicPicker;

    iget-object v1, v1, Lcom/android/music/LocalMusicPicker;->mPopWinDlg:Lcom/android/settings/custom/PopWinDialog;

    if-eqz v1, :cond_2

    .line 923
    iget-object v1, p0, Lcom/android/music/LocalMusicPicker$4;->this$0:Lcom/android/music/LocalMusicPicker;

    iget-object v1, v1, Lcom/android/music/LocalMusicPicker;->mPopWinDlg:Lcom/android/settings/custom/PopWinDialog;

    if-eqz v1, :cond_2

    .line 924
    :goto_1
    iget-object v1, p0, Lcom/android/music/LocalMusicPicker$4;->this$0:Lcom/android/music/LocalMusicPicker;

    iget-object v1, v1, Lcom/android/music/LocalMusicPicker;->mPopWinDlg:Lcom/android/settings/custom/PopWinDialog;

    invoke-virtual {v1}, Lcom/android/settings/custom/PopWinDialog;->release()V

    .line 925
    iget-object v1, p0, Lcom/android/music/LocalMusicPicker$4;->this$0:Lcom/android/music/LocalMusicPicker;

    iput-object v0, v1, Lcom/android/music/LocalMusicPicker;->mPopWinDlg:Lcom/android/settings/custom/PopWinDialog;

    .line 929
    :cond_2
    return-void

    .line 922
    :goto_2
    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/android/music/LocalMusicPicker$4;->this$0:Lcom/android/music/LocalMusicPicker;

    iget-object v2, v2, Lcom/android/music/LocalMusicPicker;->mPopWinDlg:Lcom/android/settings/custom/PopWinDialog;

    if-eqz v2, :cond_3

    .line 923
    iget-object v2, p0, Lcom/android/music/LocalMusicPicker$4;->this$0:Lcom/android/music/LocalMusicPicker;

    iget-object v2, v2, Lcom/android/music/LocalMusicPicker;->mPopWinDlg:Lcom/android/settings/custom/PopWinDialog;

    if-eqz v2, :cond_3

    .line 924
    iget-object v2, p0, Lcom/android/music/LocalMusicPicker$4;->this$0:Lcom/android/music/LocalMusicPicker;

    iget-object v2, v2, Lcom/android/music/LocalMusicPicker;->mPopWinDlg:Lcom/android/settings/custom/PopWinDialog;

    invoke-virtual {v2}, Lcom/android/settings/custom/PopWinDialog;->release()V

    .line 925
    iget-object v2, p0, Lcom/android/music/LocalMusicPicker$4;->this$0:Lcom/android/music/LocalMusicPicker;

    iput-object v0, v2, Lcom/android/music/LocalMusicPicker;->mPopWinDlg:Lcom/android/settings/custom/PopWinDialog;

    :cond_3
    throw v1

    .line 922
    :cond_4
    :goto_3
    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/android/music/LocalMusicPicker$4;->this$0:Lcom/android/music/LocalMusicPicker;

    iget-object v1, v1, Lcom/android/music/LocalMusicPicker;->mPopWinDlg:Lcom/android/settings/custom/PopWinDialog;

    if-eqz v1, :cond_5

    .line 923
    iget-object v1, p0, Lcom/android/music/LocalMusicPicker$4;->this$0:Lcom/android/music/LocalMusicPicker;

    iget-object v1, v1, Lcom/android/music/LocalMusicPicker;->mPopWinDlg:Lcom/android/settings/custom/PopWinDialog;

    if-eqz v1, :cond_5

    .line 924
    iget-object v1, p0, Lcom/android/music/LocalMusicPicker$4;->this$0:Lcom/android/music/LocalMusicPicker;

    iget-object v1, v1, Lcom/android/music/LocalMusicPicker;->mPopWinDlg:Lcom/android/settings/custom/PopWinDialog;

    invoke-virtual {v1}, Lcom/android/settings/custom/PopWinDialog;->release()V

    .line 925
    iget-object v1, p0, Lcom/android/music/LocalMusicPicker$4;->this$0:Lcom/android/music/LocalMusicPicker;

    iput-object v0, v1, Lcom/android/music/LocalMusicPicker;->mPopWinDlg:Lcom/android/settings/custom/PopWinDialog;

    .line 905
    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0    # 0x1
        :pswitch_0    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch
.end method
