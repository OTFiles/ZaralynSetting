.class public final synthetic Lcom/android/settings/location/-$$Lambda$LocationSliceBuilder$b_EpqAhS4ORYylfhNREU0o0sGYE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/support/v4/util/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Landroid/support/v4/graphics/drawable/IconCompat;

.field private final synthetic f$2:Landroidx/slice/builders/SliceAction;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/support/v4/graphics/drawable/IconCompat;Landroidx/slice/builders/SliceAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/location/-$$Lambda$LocationSliceBuilder$b_EpqAhS4ORYylfhNREU0o0sGYE;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/location/-$$Lambda$LocationSliceBuilder$b_EpqAhS4ORYylfhNREU0o0sGYE;->f$1:Landroid/support/v4/graphics/drawable/IconCompat;

    iput-object p3, p0, Lcom/android/settings/location/-$$Lambda$LocationSliceBuilder$b_EpqAhS4ORYylfhNREU0o0sGYE;->f$2:Landroidx/slice/builders/SliceAction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/location/-$$Lambda$LocationSliceBuilder$b_EpqAhS4ORYylfhNREU0o0sGYE;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/location/-$$Lambda$LocationSliceBuilder$b_EpqAhS4ORYylfhNREU0o0sGYE;->f$1:Landroid/support/v4/graphics/drawable/IconCompat;

    iget-object v2, p0, Lcom/android/settings/location/-$$Lambda$LocationSliceBuilder$b_EpqAhS4ORYylfhNREU0o0sGYE;->f$2:Landroidx/slice/builders/SliceAction;

    check-cast p1, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-static {v0, v1, v2, p1}, Lcom/android/settings/location/LocationSliceBuilder;->lambda$getSlice$0(Ljava/lang/String;Landroid/support/v4/graphics/drawable/IconCompat;Landroidx/slice/builders/SliceAction;Landroidx/slice/builders/ListBuilder$RowBuilder;)V

    return-void
.end method
