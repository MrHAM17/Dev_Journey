package com.streetstyleecommerceapp.app.modules.favorite.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.streetstyleecommerceapp.app.R
import com.streetstyleecommerceapp.app.databinding.RowFavoriteBinding
import com.streetstyleecommerceapp.app.modules.favorite.`data`.model.FavoriteRowModel
import kotlin.Int
import kotlin.collections.List

class FavoriteAdapter(
  var list: List<FavoriteRowModel>
) : RecyclerView.Adapter<FavoriteAdapter.RowFavoriteVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowFavoriteVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_favorite,parent,false)
    return RowFavoriteVH(view)
  }

  override fun onBindViewHolder(holder: RowFavoriteVH, position: Int) {
    val favoriteRowModel = FavoriteRowModel()
    // TODO uncomment following line after integration with data source
    // val favoriteRowModel = list[position]
    holder.binding.favoriteRowModel = favoriteRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<FavoriteRowModel>) {
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
      item: FavoriteRowModel
    ) {
    }
  }

  inner class RowFavoriteVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowFavoriteBinding = RowFavoriteBinding.bind(itemView)
  }
}
