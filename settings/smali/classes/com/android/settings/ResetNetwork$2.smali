.class Lcom/android/settings/ResetNetwork$2;
.super Ljava/lang/Object;
.source "ResetNetwork.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ResetNetwork;->establishInitialState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ResetNetwork;


# direct methods
.method constructor <init>(Lcom/android/settings/ResetNetwork;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/ResetNetwork;

    .line 217
    iput-object p1, p0, Lcom/android/settings/ResetNetwork$2;->this$0:Lcom/android/settings/ResetNetwork;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 220
    iget-object v0, p0, Lcom/android/settings/ResetNetwork$2;->this$0:Lcom/android/settings/ResetNetwork;

    invoke-static {v0}, Lcom/android/settings/ResetNetwork;->access$200(Lcom/android/settings/ResetNetwork;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 221
    return-void
.end method
