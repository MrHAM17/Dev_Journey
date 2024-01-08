package com.helthiotelehealth.app.modules.pharmacy.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.databinding.RowPopularproductBinding
import com.helthiotelehealth.app.modules.pharmacy.`data`.model.PopularproductRowModel
import kotlin.Int
import kotlin.collections.List

class PopularProductAdapter(
  var list: List<PopularproductRowModel>
) : RecyclerView.Adapter<PopularProductAdapter.RowPopularproductVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowPopularproductVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_popularproduct,parent,false)
    return RowPopularproductVH(view)
  }

  override fun onBindViewHolder(holder: RowPopularproductVH, position: Int) {
    val popularproductRowModel = PopularproductRowModel()
    // TODO uncomment following line after integration with data source
    // val popularproductRowModel = list[position]
    holder.binding.popularproductRowModel = popularproductRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<PopularproductRowModel>) {
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
      item: PopularproductRowModel
    ) {
    }
  }

  inner class RowPopularproductVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowPopularproductBinding = RowPopularproductBinding.bind(itemView)
  }
}
