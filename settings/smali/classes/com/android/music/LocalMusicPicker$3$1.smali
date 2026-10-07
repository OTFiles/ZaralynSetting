.class Lcom/android/music/LocalMusicPicker$3$1;
.super Ljava/lang/Object;
.source "LocalMusicPicker.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/LocalMusicPicker$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/music/LocalMusicPicker$3;


# direct methods
.method constructor <init>(Lcom/android/music/LocalMusicPicker$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/music/LocalMusicPicker$3;

    .line 848
    iput-object p1, p0, Lcom/android/music/LocalMusicPicker$3$1;->this$1:Lcom/android/music/LocalMusicPicker$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 851
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker$3$1;->this$1:Lcom/android/music/LocalMusicPicker$3;

    iget-object v0, v0, Lcom/android/music/LocalMusicPicker$3;->this$0:Lcom/android/music/LocalMusicPicker;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/music/LocalMusicPicker;->mPopWinDlg:Lcom/android/settings/custom/PopWinDialog;

    .line 852
    return-void
.end method
