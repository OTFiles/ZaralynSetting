.class public Lcom/android/settings/search/DeviceIndexFeatureProviderImpl;
.super Ljava/lang/Object;
.source "DeviceIndexFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/search/DeviceIndexFeatureProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearIndex(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    return-void
.end method

.method public index(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "sliceUri"    # Landroid/net/Uri;
    .param p4, "launchUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 33
    .local p5, "keywords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method
