package com.ecommerce.app.modules.favoriteproduct.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.ecommerce.app.R
import com.ecommerce.app.databinding.RowFavoriteproductBinding
import com.ecommerce.app.modules.favoriteproduct.`data`.model.FavoriteproductRowModel
import kotlin.Int
import kotlin.collections.List

class FavoriteProductAdapter(
  var list: List<FavoriteproductRowModel>
) : RecyclerView.Adapter<FavoriteProductAdapter.RowFavoriteproductVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowFavoriteproductVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_favoriteproduct,parent,false)
    return RowFavoriteproductVH(view)
  }

  override fun onBindViewHolder(holder: RowFavoriteproductVH, position: Int) {
    val favoriteproductRowModel = FavoriteproductRowModel()
    // TODO uncomment following line after integration with data source
    // val favoriteproductRowModel = list[position]
    holder.binding.favoriteproductRowModel = favoriteproductRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<FavoriteproductRowModel>) {
    list = newData
    notifyDataSetChanged()
  }

  fun setOnItemClickListener(clickListener: OnItemClickListener) {
    this.clickListener = clickListener
  }

  interface OnItemClickListener {
    fun onItemClick(
      view: View,
      position: Int,
      item: FavoriteproductRowModel
    ) {
    }
  }

  inner class RowFavoriteproductVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowFavoriteproductBinding = RowFavoriteproductBinding.bind(itemView)
    init {
      binding.linearProductItem.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, FavoriteproductRowModel())
      }
    }
  }
}
