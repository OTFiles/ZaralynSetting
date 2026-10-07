.class Lcom/readboy/store/AppUpdate/UpdateHelper$1;
.super Ljava/lang/Object;
.source "UpdateHelper.java"

# interfaces
.implements Lcom/readboy/store/dialogs/BaseDialog$DialogDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/readboy/store/AppUpdate/UpdateHelper;-><init>(Landroid/app/Activity;Lcom/readboy/store/AppUpdate/ApInfo;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/readboy/store/AppUpdate/UpdateHelper;


# direct methods
.method constructor <init>(Lcom/readboy/store/AppUpdate/UpdateHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/readboy/store/AppUpdate/UpdateHelper;

    .line 39
    iput-object p1, p0, Lcom/readboy/store/AppUpdate/UpdateHelper$1;->this$0:Lcom/readboy/store/AppUpdate/UpdateHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateHelper$1;->this$0:Lcom/readboy/store/AppUpdate/UpdateHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/readboy/store/AppUpdate/UpdateHelper;->release(Z)V

    .line 43
    return-void
.end method
