.class Lcom/android/music/LocalMusicPicker$3;
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

    .line 838
    iput-object p1, p0, Lcom/android/music/LocalMusicPicker$3;->this$0:Lcom/android/music/LocalMusicPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 842
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker$3;->this$0:Lcom/android/music/LocalMusicPicker;

    iget-object v0, v0, Lcom/android/music/LocalMusicPicker;->mPopWinDlg:Lcom/android/settings/custom/PopWinDialog;

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker$3;->this$0:Lcom/android/music/LocalMusicPicker;

    iget-object v0, v0, Lcom/android/music/LocalMusicPicker;->mPopWinDlg:Lcom/android/settings/custom/PopWinDialog;

    invoke-virtual {v0}, Lcom/android/settings/custom/PopWinDialog;->release()V

    .line 844
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker$3;->this$0:Lcom/android/music/LocalMusicPicker;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/music/LocalMusicPicker;->mPopWinDlg:Lcom/android/settings/custom/PopWinDialog;

    .line 845
    return-void

    .line 847
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 848
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker$3;->this$0:Lcom/android/music/LocalMusicPicker;

    new-instance v1, Lcom/android/settings/custom/PopWinDialog;

    iget-object v2, p0, Lcom/android/music/LocalMusicPicker$3;->this$0:Lcom/android/music/LocalMusicPicker;

    iget-object v3, p0, Lcom/android/music/LocalMusicPicker$3;->this$0:Lcom/android/music/LocalMusicPicker;

    invoke-static {v3}, Lcom/android/music/LocalMusicPicker;->access$1200(Lcom/android/music/LocalMusicPicker;)Landroid/view/View$OnClickListener;

    move-result-object v3

    new-instance v4, Lcom/android/music/LocalMusicPicker$3$1;

    invoke-direct {v4, p0}, Lcom/android/music/LocalMusicPicker$3$1;-><init>(Lcom/android/music/LocalMusicPicker$3;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/custom/PopWinDialog;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/widget/PopupWindow$OnDismissListener;)V

    iput-object v1, v0, Lcom/android/music/LocalMusicPicker;->mPopWinDlg:Lcom/android/settings/custom/PopWinDialog;

    .line 854
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker$3;->this$0:Lcom/android/music/LocalMusicPicker;

    invoke-virtual {v0}, Lcom/android/music/LocalMusicPicker;->initPopupWindowDialog()V

    .line 855
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker$3;->this$0:Lcom/android/music/LocalMusicPicker;

    iget-object v0, v0, Lcom/android/music/LocalMusicPicker;->mPopWinDlg:Lcom/android/settings/custom/PopWinDialog;

    invoke-virtual {v0}, Lcom/android/settings/custom/PopWinDialog;->show()V

    .line 857
    :cond_1
    return-void
.end method
