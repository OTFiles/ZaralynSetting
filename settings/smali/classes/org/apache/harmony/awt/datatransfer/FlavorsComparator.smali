.class public Lorg/apache/harmony/awt/datatransfer/FlavorsComparator;
.super Ljava/lang/Object;
.source "FlavorsComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/awt/datatransfer/DataFlavor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/awt/datatransfer/DataFlavor;Ljava/awt/datatransfer/DataFlavor;)I
    .locals 4
    .param p1, "flav1"    # Ljava/awt/datatransfer/DataFlavor;
    .param p2, "flav2"    # Ljava/awt/datatransfer/DataFlavor;

    .line 34
    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->isFlavorTextType()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/awt/datatransfer/DataFlavor;->isFlavorTextType()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    return v1

    .line 36
    :cond_0
    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->isFlavorTextType()Z

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/awt/datatransfer/DataFlavor;->isFlavorTextType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    return v2

    .line 38
    :cond_1
    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->isFlavorTextType()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/awt/datatransfer/DataFlavor;->isFlavorTextType()Z

    move-result v0

    if-nez v0, :cond_2

    .line 39
    return v3

    .line 41
    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/awt/datatransfer/DataFlavor;

    aput-object p1, v0, v1

    aput-object p2, v0, v3

    invoke-static {v0}, Ljava/awt/datatransfer/DataFlavor;->selectBestTextFlavor([Ljava/awt/datatransfer/DataFlavor;)Ljava/awt/datatransfer/DataFlavor;

    move-result-object v0

    .line 42
    .local v0, "df":Ljava/awt/datatransfer/DataFlavor;
    if-ne v0, p1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/awt/datatransfer/DataFlavor;

    check-cast p2, Ljava/awt/datatransfer/DataFlavor;

    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/awt/datatransfer/FlavorsComparator;->compare(Ljava/awt/datatransfer/DataFlavor;Ljava/awt/datatransfer/DataFlavor;)I

    move-result p1

    return p1
.end method
