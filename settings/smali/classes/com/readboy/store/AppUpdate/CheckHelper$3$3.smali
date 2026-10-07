.class Lcom/readboy/store/AppUpdate/CheckHelper$3$3;
.super Ljava/lang/Object;
.source "CheckHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/readboy/store/AppUpdate/CheckHelper$3;->onError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/readboy/store/AppUpdate/CheckHelper$3;

.field final synthetic val$error:I


# direct methods
.method constructor <init>(Lcom/readboy/store/AppUpdate/CheckHelper$3;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/readboy/store/AppUpdate/CheckHelper$3;

    .line 274
    iput-object p1, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3$3;->this$1:Lcom/readboy/store/AppUpdate/CheckHelper$3;

    iput p2, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3$3;->val$error:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3$3;->this$1:Lcom/readboy/store/AppUpdate/CheckHelper$3;

    iget-object v0, v0, Lcom/readboy/store/AppUpdate/CheckHelper$3;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/CheckHelper;->access$000(Lcom/readboy/store/AppUpdate/CheckHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3$3;->this$1:Lcom/readboy/store/AppUpdate/CheckHelper$3;

    iget-object v0, v0, Lcom/readboy/store/AppUpdate/CheckHelper$3;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    iget v1, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3$3;->val$error:I

    invoke-virtual {v0, v1}, Lcom/readboy/store/AppUpdate/CheckHelper;->checkError(I)V

    .line 281
    return-void
.end method
