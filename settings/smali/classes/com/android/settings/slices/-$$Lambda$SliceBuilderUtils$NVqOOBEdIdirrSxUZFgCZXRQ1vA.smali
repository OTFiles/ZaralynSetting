.class public final synthetic Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$NVqOOBEdIdirrSxUZFgCZXRQ1vA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/support/v4/util/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/slices/SliceData;

.field private final synthetic f$1:Ljava/lang/CharSequence;

.field private final synthetic f$2:Landroid/app/PendingIntent;

.field private final synthetic f$3:Landroid/support/v4/graphics/drawable/IconCompat;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/slices/SliceData;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$NVqOOBEdIdirrSxUZFgCZXRQ1vA;->f$0:Lcom/android/settings/slices/SliceData;

    iput-object p2, p0, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$NVqOOBEdIdirrSxUZFgCZXRQ1vA;->f$1:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$NVqOOBEdIdirrSxUZFgCZXRQ1vA;->f$2:Landroid/app/PendingIntent;

    iput-object p4, p0, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$NVqOOBEdIdirrSxUZFgCZXRQ1vA;->f$3:Landroid/support/v4/graphics/drawable/IconCompat;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$NVqOOBEdIdirrSxUZFgCZXRQ1vA;->f$0:Lcom/android/settings/slices/SliceData;

    iget-object v1, p0, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$NVqOOBEdIdirrSxUZFgCZXRQ1vA;->f$1:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$NVqOOBEdIdirrSxUZFgCZXRQ1vA;->f$2:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$NVqOOBEdIdirrSxUZFgCZXRQ1vA;->f$3:Landroid/support/v4/graphics/drawable/IconCompat;

    check-cast p1, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->lambda$buildIntentSlice$1(Lcom/android/settings/slices/SliceData;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;Landroidx/slice/builders/ListBuilder$RowBuilder;)V

    return-void
.end method
