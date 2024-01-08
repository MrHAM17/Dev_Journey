package com.ecommerce.app.modules.productdetail.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.ecommerce.app.R
import com.ecommerce.app.databinding.RowRecomendedBinding
import com.ecommerce.app.modules.productdetail.`data`.model.RecomendedRowModel
import kotlin.Int
import kotlin.collections.List

class RecomendedAdapter(
  var list: List<RecomendedRowModel>
) : RecyclerView.Adapter<RecomendedAdapter.RowRecomendedVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowRecomendedVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_recomended,parent,false)
    return RowRecomendedVH(view)
  }

  override fun onBindViewHolder(holder: RowRecomendedVH, position: Int) {
    val recomendedRowModel = RecomendedRowModel()
    // TODO uncomment following line after integration with data source
    // val recomendedRowModel = list[position]
    holder.binding.recomendedRowModel = recomendedRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<RecomendedRowModel>) {
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
      item: RecomendedRowModel
    ) {
    }
  }

  inner class RowRecomendedVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowRecomendedBinding = RowRecomendedBinding.bind(itemView)
  }
}
