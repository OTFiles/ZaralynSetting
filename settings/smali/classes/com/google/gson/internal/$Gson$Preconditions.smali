.class public final Lcom/google/gson/internal/$Gson$Preconditions;
.super Ljava/lang/Object;
.source "$Gson$Preconditions.java"


# direct methods
.method public static checkArgument(Z)V
    .locals 1
    .param p0, "condition"    # Z

    .line 45
    if-eqz p0, :cond_0

    .line 48
    return-void

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 38
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 41
    return-object p0

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
