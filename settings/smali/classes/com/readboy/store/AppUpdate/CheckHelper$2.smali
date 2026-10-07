.class Lcom/readboy/store/AppUpdate/CheckHelper$2;
.super Ljava/lang/Object;
.source "CheckHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/readboy/store/AppUpdate/CheckHelper;->showUpdateDialog(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/readboy/store/AppUpdate/CheckHelper;


# direct methods
.method constructor <init>(Lcom/readboy/store/AppUpdate/CheckHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/readboy/store/AppUpdate/CheckHelper;

    .line 177
    iput-object p1, p0, Lcom/readboy/store/AppUpdate/CheckHelper$2;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 180
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper$2;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/CheckHelper;->access$000(Lcom/readboy/store/AppUpdate/CheckHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 183
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.dream.android.appstore"

    const-string v3, "cn.dream.android.appstore.ui.activity.AppDetailActivity_"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .local v1, "componentName":Landroid/content/ComponentName;
    const-string v2, "pkg"

    iget-object v3, p0, Lcom/readboy/store/AppUpdate/CheckHelper$2;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    invoke-static {v3}, Lcom/readboy/store/AppUpdate/CheckHelper;->access$200(Lcom/readboy/store/AppUpdate/CheckHelper;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 187
    const-string v2, "type"

    const-string v3, "autoDownload"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const v2, 0x10008000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 191
    :try_start_0
    iget-object v2, p0, Lcom/readboy/store/AppUpdate/CheckHelper$2;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    invoke-static {v2}, Lcom/readboy/store/AppUpdate/CheckHelper;->access$200(Lcom/readboy/store/AppUpdate/CheckHelper;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 194
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    :catch_0
    move-exception v2

    .line 193
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "AppUpdate"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .end local v0
    .end local v1
    .end local v2
    :cond_0
    :goto_0
    return-void
.end method
