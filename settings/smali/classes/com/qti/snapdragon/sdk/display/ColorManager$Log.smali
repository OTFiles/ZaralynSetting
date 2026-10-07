.class public Lcom/qti/snapdragon/sdk/display/ColorManager$Log;
.super Ljava/lang/Object;
.source "ColorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/snapdragon/sdk/display/ColorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Log"
.end annotation


# direct methods
.method protected static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;

    .line 2619
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    return-void
.end method

.method protected static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;

    .line 2624
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2625
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    :cond_0
    return-void
.end method
