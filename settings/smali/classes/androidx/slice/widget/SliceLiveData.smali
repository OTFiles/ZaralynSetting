.class public final Landroidx/slice/widget/SliceLiveData;
.super Ljava/lang/Object;
.source "SliceLiveData.java"


# static fields
.field public static final OLD_BASIC:Landroidx/slice/SliceSpec;

.field public static final OLD_LIST:Landroidx/slice/SliceSpec;

.field public static final SUPPORTED_SPECS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 59
    new-instance v0, Landroidx/slice/SliceSpec;

    const-string v1, "androidx.app.slice.BASIC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/slice/widget/SliceLiveData;->OLD_BASIC:Landroidx/slice/SliceSpec;

    .line 65
    new-instance v0, Landroidx/slice/SliceSpec;

    const-string v1, "androidx.app.slice.LIST"

    invoke-direct {v0, v1, v2}, Landroidx/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/slice/widget/SliceLiveData;->OLD_LIST:Landroidx/slice/SliceSpec;

    .line 71
    new-instance v0, Landroid/support/v4/util/ArraySet;

    const/4 v1, 0x4

    new-array v1, v1, [Landroidx/slice/SliceSpec;

    sget-object v3, Landroidx/slice/SliceSpecs;->BASIC:Landroidx/slice/SliceSpec;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    sget-object v3, Landroidx/slice/SliceSpecs;->LIST:Landroidx/slice/SliceSpec;

    aput-object v3, v1, v2

    sget-object v2, Landroidx/slice/widget/SliceLiveData;->OLD_BASIC:Landroidx/slice/SliceSpec;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Landroidx/slice/widget/SliceLiveData;->OLD_LIST:Landroidx/slice/SliceSpec;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 72
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/util/ArraySet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroidx/slice/widget/SliceLiveData;->SUPPORTED_SPECS:Ljava/util/Set;

    .line 71
    return-void
.end method
